.class public final Lkotlin/jvm/internal/LocalVariableReferencesKt;
.super Ljava/lang/Object;
.source "localVariableReferences.kt"


# direct methods
.method public static final synthetic access$notSupportedError()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/jvm/internal/LocalVariableReferencesKt;->notSupportedError()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method private static final notSupportedError()Ljava/lang/Void;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported for local property reference."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
