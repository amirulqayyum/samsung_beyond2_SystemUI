.class public final synthetic Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$-lqCRoMMXqFaHckJ9YxYdcgQN08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$-lqCRoMMXqFaHckJ9YxYdcgQN08;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$-lqCRoMMXqFaHckJ9YxYdcgQN08;->f$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->lambda$updateUnlockIcon$4$KeyguardBiometricSmallIconView(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
