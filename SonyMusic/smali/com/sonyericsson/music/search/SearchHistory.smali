.class public Lcom/sonyericsson/music/search/SearchHistory;
.super Ljava/lang/Object;
.source "SearchHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/search/SearchHistory$DeleteTask;,
        Lcom/sonyericsson/music/search/SearchHistory$InsertTask;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/search/SearchHistory;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/Context;Lcom/sonyericsson/music/search/SearchItem;)Z
    .locals 4

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x3

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 78
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getSource()Lcom/sonyericsson/music/search/SearchConstants$Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/search/SearchConstants$Source;->toTableSource()Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 79
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchConstants$Type;->toTableType()Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->id()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 82
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "content_id = ? AND source = ? AND type = ?"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static deleteAsync(Landroid/content/Context;Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 3

    .line 92
    new-instance v0, Lcom/sonyericsson/music/search/SearchHistory$DeleteTask;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/search/SearchHistory$DeleteTask;-><init>(Lcom/sonyericsson/music/search/SearchItem;)V

    sget-object p1, Lcom/sonyericsson/music/search/SearchHistory;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static fetch(Landroid/content/ContentResolver;Lcom/sonyericsson/music/search/SearchCancelCallback;)Lcom/sonyericsson/music/search/SearchResult;
    .locals 6

    .line 104
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v5, "date_updated DESC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 107
    new-instance v0, Lcom/sonyericsson/music/search/SearchHistoryResult;

    invoke-direct {v0}, Lcom/sonyericsson/music/search/SearchHistoryResult;-><init>()V

    if-eqz p0, :cond_2

    .line 110
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/search/SearchHistory;->itemFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/search/SearchItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/search/SearchHistoryResult;->add(Lcom/sonyericsson/music/search/SearchItem;)V

    .line 113
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchCancelCallback;->isCancelled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 116
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 117
    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static insert(Landroid/content/Context;Lcom/sonyericsson/music/search/SearchItem;)Z
    .locals 4

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "content_id"

    .line 44
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    .line 45
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/search/SearchConstants$Type;->toTableType()Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "source"

    .line 46
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getSource()Lcom/sonyericsson/music/search/SearchConstants$Source;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/search/SearchConstants$Source;->toTableSource()Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "track"

    .line 47
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/search/SearchHistory;->prepare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 48
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/search/SearchHistory;->prepare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    .line 49
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchHistory;->prepare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "date_updated"

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static insertAsync(Landroid/content/Context;Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 3

    .line 61
    new-instance v0, Lcom/sonyericsson/music/search/SearchHistory$InsertTask;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/search/SearchHistory$InsertTask;-><init>(Lcom/sonyericsson/music/search/SearchItem;)V

    sget-object p1, Lcom/sonyericsson/music/search/SearchHistory;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static itemFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/search/SearchItem;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "content_id"

    .line 123
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    .line 124
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "source"

    .line 125
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "track"

    .line 126
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "artist"

    .line 127
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "album"

    .line 128
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 130
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 132
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->getType(I)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/sonyericsson/music/search/SearchConstants$Type;->fromTableType(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;)Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v8

    .line 136
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->getSource(I)Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/sonyericsson/music/search/SearchConstants$Source;->fromTableSource(Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;)Lcom/sonyericsson/music/search/SearchConstants$Source;

    move-result-object v9

    .line 139
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 140
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 141
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 142
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->VERY_LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchConstants$Priority;->value()I

    move-result v16

    .line 145
    sget-object v0, Lcom/sonyericsson/music/search/SearchHistory$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    .line 151
    :pswitch_0
    invoke-static {v13}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-static {v13, v14}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v12, v0

    .line 157
    :goto_0
    new-instance v0, Lcom/sonyericsson/music/search/SearchItem;

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lcom/sonyericsson/music/search/SearchItem;-><init>(Lcom/sonyericsson/music/search/SearchConstants$Type;Lcom/sonyericsson/music/search/SearchConstants$Source;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static prepare(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
