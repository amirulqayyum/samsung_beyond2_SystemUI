.class public final Lokio/AsyncTimeout$source$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.kt"

# interfaces
.implements Lokio/Source;


# instance fields
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lokio/AsyncTimeout;


# virtual methods
.method public close()V
    .locals 2

    .line 171
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 178
    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout;->exit$okio(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    :try_start_1
    iget-object v1, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit$okio(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_0
    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lokio/AsyncTimeout;->exit$okio(Z)V

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 159
    :try_start_0
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    .line 165
    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {p0, p3}, Lokio/AsyncTimeout;->exit$okio(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    :try_start_1
    iget-object p2, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lokio/AsyncTimeout;->exit$okio(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_0
    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->this$0:Lokio/AsyncTimeout;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lokio/AsyncTimeout;->exit$okio(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->$source:Lokio/Source;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
