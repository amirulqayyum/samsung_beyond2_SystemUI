.class public Lcom/android/systemui/statusbar/VibratorHelper;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHapticFeedbackEnabled:Z

.field private final mVibrationObserver:Landroid/database/ContentObserver;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 42
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 43
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/VibratorHelper;->STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/VibratorHelper$1;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/VibratorHelper$1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrationObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mContext:Landroid/content/Context;

    .line 58
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "haptic_feedback_enabled"

    .line 61
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrationObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 60
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrationObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->updateHapticFeedBackEnabled()V

    return-void
.end method

.method private updateHapticFeedBackEnabled()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mHapticFeedbackEnabled:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$vibrate$0$VibratorHelper(I)V
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/VibratorHelper;->STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public synthetic lambda$vibrate$1$VibratorHelper(Landroid/os/VibrationEffect;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public vibrate(I)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$-aLryVlYLKeF6vrqCqBn9qjn6bQ;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$Dt6Db4gZwzRc-cw7EMsg7nEies0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$VibratorHelper$Dt6Db4gZwzRc-cw7EMsg7nEies0;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
