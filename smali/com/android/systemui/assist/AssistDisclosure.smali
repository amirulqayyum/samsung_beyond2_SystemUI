.class public Lcom/android/systemui/assist/AssistDisclosure;
.super Ljava/lang/Object;
.source "AssistDisclosure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

.field private mViewAdded:Z

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistDisclosure$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mWm:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure;->show()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure;->hide()V

    return-void
.end method

.method private hide()V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    :cond_0
    return-void
.end method

.method private show()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;-><init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7df

    const v2, 0x80508

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const-string v1, "AssistDisclosure"

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 86
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 88
    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure;->mWm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iput-boolean v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public postShow()V
    .locals 2

    .line 64
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 65
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAssistDisclosureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AssistDisclosure"

    const-string v0, "AssistDisclosure VI is disabled"

    .line 66
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
