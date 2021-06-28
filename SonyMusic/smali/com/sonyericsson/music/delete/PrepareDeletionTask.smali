.class Lcom/sonyericsson/music/delete/PrepareDeletionTask;
.super Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
.source "PrepareDeletionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->mAppContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private findVolumesToBeApproved(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;
    .locals 11

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_5

    .line 81
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "storage"

    .line 84
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 85
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v3, "_id"

    .line 90
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v5, "_data"

    .line 91
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 93
    :cond_1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 94
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 96
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_4

    .line 98
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 99
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v4, :cond_3

    .line 100
    invoke-virtual {p1, v8}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 103
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v9

    .line 104
    new-instance v10, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;

    invoke-direct {v10, v6, v7, v9}, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 108
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_3
    new-instance v8, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v7, v9}, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_4
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 122
    :cond_5
    new-instance p1, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method protected varargs doTaskInBackground([Ljava/lang/Void;)Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;
    .locals 3

    .line 43
    iget-object p1, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->mUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/DBUtils;->getTrackInfo(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object p1

    move-object v0, p1

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->findVolumesToBeApproved(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_1
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/delete/PrepareDeletionTask;->doTaskInBackground([Ljava/lang/Void;)Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;

    move-result-object p1

    return-object p1
.end method
