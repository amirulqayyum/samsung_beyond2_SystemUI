.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$2$rGO3G417eZYRHd7R8lW71E94wbE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$2$rGO3G417eZYRHd7R8lW71E94wbE;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$2$rGO3G417eZYRHd7R8lW71E94wbE;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->lambda$onFinishedGoingToSleep$1$KeyguardViewMediator$2()V

    return-void
.end method
