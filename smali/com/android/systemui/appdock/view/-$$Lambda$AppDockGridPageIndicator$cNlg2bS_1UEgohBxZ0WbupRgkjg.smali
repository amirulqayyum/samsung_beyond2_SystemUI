.class public final synthetic Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridPageIndicator$cNlg2bS_1UEgohBxZ0WbupRgkjg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridPageIndicator$cNlg2bS_1UEgohBxZ0WbupRgkjg;->f$0:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    iput p2, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridPageIndicator$cNlg2bS_1UEgohBxZ0WbupRgkjg;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridPageIndicator$cNlg2bS_1UEgohBxZ0WbupRgkjg;->f$0:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    iget p0, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridPageIndicator$cNlg2bS_1UEgohBxZ0WbupRgkjg;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->lambda$setCount$0$AppDockGridPageIndicator(ILandroid/view/View;)V

    return-void
.end method
