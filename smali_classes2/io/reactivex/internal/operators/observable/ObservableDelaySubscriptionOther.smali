.class public final Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;
.super Lio/reactivex/Observable;
.source "ObservableDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$DelayObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final main:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final other:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TU;>;"
        }
    .end annotation
.end field


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 39
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 41
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$DelayObserver;

    invoke-direct {v1, p0, v0, p1}, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$DelayObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/Observer;)V

    .line 43
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;->other:Lio/reactivex/ObservableSource;

    invoke-interface {p0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
