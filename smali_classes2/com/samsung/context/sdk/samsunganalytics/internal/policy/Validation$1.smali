.class final Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;
.super Landroid/content/BroadcastReceiver;
.source "Validation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->isValidConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field final synthetic val$context:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->val$context:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->val$context:Landroid/app/Application;

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->val$configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p1, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method
