.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$zu8WHsssdKOe4exoHv4pUkbqHKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$zu8WHsssdKOe4exoHv4pUkbqHKg;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$zu8WHsssdKOe4exoHv4pUkbqHKg;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    check-cast p1, Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method
