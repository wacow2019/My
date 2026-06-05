graph TD
    %% 節點定義
    PM[project_main <br> 建案主表]
    PH[project_house <br> 房屋資料表]
    PF[project_facility <br> 房屋設施表 <br> 設施主代號]
    PI[project_inspection <br> 設施檢查表]
    HF[house_facility <br> 缺失設備表 <br> 房屋內設備代號]
    HM[house_miss <br> 缺失記錄表]

    %% 關聯關係
    PM -->|1對多| PH
    PM -->|1對多| PF
    
    PH --> PI
    PF --> PI
    
    PH -->|1對多| HF
    
    %% house_miss 的核心外鍵對應
    PF -->|hcid = reckey| HM
    HF -->|hfid = reckey| HM
    PI -->|inspection_id| HM

    %% 樣式調整
    style PM fill:#1a3a5f,stroke:#fff,stroke-width:2px,color:#fff
    style HM fill:#b45309,stroke:#fff,stroke-width:2px,color:#fff
    style PF fill:#0284c7,stroke:#fff,stroke-width:1px,color:#fff
    style HF fill:#0284c7,stroke:#fff,stroke-width:1px,color:#fff