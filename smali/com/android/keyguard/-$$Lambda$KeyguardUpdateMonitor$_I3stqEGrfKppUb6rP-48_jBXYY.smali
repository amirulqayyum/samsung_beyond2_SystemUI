.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$_I3stqEGrfKppUb6rP-48_jBXYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$_I3stqEGrfKppUb6rP-48_jBXYY;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$_I3stqEGrfKppUb6rP-48_jBXYY;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$requestSessionClose$68$KeyguardUpdateMonitor()V

    return-void
.end method
