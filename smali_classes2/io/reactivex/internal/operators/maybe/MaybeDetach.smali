.class public final Lio/reactivex/internal/operators/maybe/MaybeDetach;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source "MaybeDetach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;->source:Lio/reactivex/MaybeSource;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDetach$DetachMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    return-void
.end method
