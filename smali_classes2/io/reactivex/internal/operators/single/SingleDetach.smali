.class public final Lio/reactivex/internal/operators/single/SingleDetach;
.super Lio/reactivex/Single;
.source "SingleDetach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleDetach;->source:Lio/reactivex/SingleSource;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver;-><init>(Lio/reactivex/SingleObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
