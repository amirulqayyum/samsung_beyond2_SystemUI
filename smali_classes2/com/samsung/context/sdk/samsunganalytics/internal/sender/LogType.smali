.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

.field public static final enum DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

.field public static final enum UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;


# instance fields
.field abbrev:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    const/4 v1, 0x0

    const-string v2, "DEVICE"

    const-string v3, "dvc"

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 9
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    const/4 v2, 0x1

    const-string v3, "UIX"

    const-string v4, "uix"

    invoke-direct {v0, v3, v2, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 7
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->abbrev:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1

    .line 7
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-object v0
.end method


# virtual methods
.method public getAbbrev()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->abbrev:Ljava/lang/String;

    return-object p0
.end method
