.class Lcom/android/systemui/qs/DataUsageView$1;
.super Landroid/database/ContentObserver;
.source "DataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/DataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/DataUsageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/DataUsageView;Landroid/os/Handler;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p1}, Lcom/android/systemui/qs/DataUsageView;->isLimitSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/DataUsageView;->getLimitBytes()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/android/systemui/qs/DataUsageView;->access$002(Lcom/android/systemui/qs/DataUsageView;J)J

    .line 95
    iget-object p0, p0, Lcom/android/systemui/qs/DataUsageView$1;->this$0:Lcom/android/systemui/qs/DataUsageView;

    invoke-static {p0}, Lcom/android/systemui/qs/DataUsageView;->access$100(Lcom/android/systemui/qs/DataUsageView;)V

    return-void
.end method
