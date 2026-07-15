declare module '@apiverve/csvtojson' {
  export interface csvtojsonOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface csvtojsonResponse {
    status: string;
    error: string | null;
    data: CSVtoJSONConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CSVtoJSONConverterData {
      rowCount:      number | null;
      columnCount:   number | null;
      columns:       (null | string)[];
      inferredTypes: InferredTypes;
      json:          InferredTypes[];
  }
  
  interface InferredTypes {
      name: null | string;
      age:  null | string;
      city: null | string;
  }

  export default class csvtojsonWrapper {
    constructor(options: csvtojsonOptions);

    execute(callback: (error: any, data: csvtojsonResponse | null) => void): Promise<csvtojsonResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: csvtojsonResponse | null) => void): Promise<csvtojsonResponse>;
    execute(query?: Record<string, any>): Promise<csvtojsonResponse>;
  }
}
