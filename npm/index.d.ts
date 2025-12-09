declare module '@apiverve/csvtojson' {
  export interface csvtojsonOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface csvtojsonResponse {
    status: string;
    error: string | null;
    data: CSVtoJSONConverterData;
    code?: number;
  }


  interface CSVtoJSONConverterData {
      rowCount:    number;
      columnCount: number;
      columns:     string[];
      json:        JSON[];
  }
  
  interface JSON {
      name: string;
      age:  string;
      city: string;
  }

  export default class csvtojsonWrapper {
    constructor(options: csvtojsonOptions);

    execute(callback: (error: any, data: csvtojsonResponse | null) => void): Promise<csvtojsonResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: csvtojsonResponse | null) => void): Promise<csvtojsonResponse>;
    execute(query?: Record<string, any>): Promise<csvtojsonResponse>;
  }
}
