.class public Landroidx/loader/content/CursorLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field private mCursor:Landroid/database/Cursor;

.field private final mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mProjection:[Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v0, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v0, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 140
    iput-object p2, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 141
    iput-object p3, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 142
    iput-object p4, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 144
    iput-object p6, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 94
    :cond_0
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "data"    # Landroid/database/Cursor;

    .line 100
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 108
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 110
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 114
    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_3
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroidx/loader/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/loader/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 248
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 65
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v6, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v8, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-static/range {v2 .. v8}, Landroidx/core/content/ContentResolverCompat;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 71
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 72
    iget-object v2, p0, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 75
    nop

    .end local p0    # "this":Landroidx/loader/content/CursorLoader;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroidx/loader/content/CursorLoader;
    :cond_0
    :goto_0
    nop

    .line 80
    monitor-enter p0

    .line 81
    :try_start_4
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 82
    monitor-exit p0

    .line 78
    return-object v1

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 80
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 81
    :try_start_5
    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 82
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 83
    throw v1

    .line 82
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 60
    :cond_1
    :try_start_7
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    .end local p0    # "this":Landroidx/loader/content/CursorLoader;
    throw v0

    .line 63
    .restart local p0    # "this":Landroidx/loader/content/CursorLoader;
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "data"    # Landroid/database/Cursor;

    .line 175
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroidx/loader/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 185
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->onStopLoading()V

    .line 187
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 191
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Landroidx/loader/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->forceLoad()V

    .line 162
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Landroidx/loader/content/CursorLoader;->cancelLoad()Z

    .line 171
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .line 208
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .line 217
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 226
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .line 235
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 199
    iput-object p1, p0, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 200
    return-void
.end method
