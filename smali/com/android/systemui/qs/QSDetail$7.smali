.class Lcom/android/systemui/qs/QSDetail$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 743
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 744
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSDetail;->access$702(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 745
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetail;->access$800(Lcom/android/systemui/qs/QSDetail;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 751
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p1}, Lcom/android/systemui/qs/QSDetail;->access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 752
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p1}, Lcom/android/systemui/qs/QSDetail;->access$200(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 753
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p1}, Lcom/android/systemui/qs/QSDetail;->access$900(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 758
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSDetail;->access$702(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 759
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetail;->access$800(Lcom/android/systemui/qs/QSDetail;)V

    return-void
.end method
