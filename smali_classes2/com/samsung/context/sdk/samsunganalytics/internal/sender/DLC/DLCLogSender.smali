.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.source "DLCLogSender.java"


# instance fields
.field private binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 22
    new-instance p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    .line 29
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->sendRegisterRequestToDLC()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->sendAll()V

    return-void
.end method

.method private sendAll()V
    .locals 7

    .line 32
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->get()Ljava/util/Queue;

    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 39
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    .line 36
    invoke-interface {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public send(Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->insert(Ljava/util/Map;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->getDlcService()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->sendAll()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->sendRegisterRequestToDLC()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSync(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "DLCLogSender"

    const-string v1, "not support sync api"

    .line 70
    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->send(Ljava/util/Map;)I

    const/16 p0, -0x64

    return p0
.end method

.method protected setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;

    const-string p0, "do"

    .line 48
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "dm"

    .line 49
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "v"

    .line 50
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
