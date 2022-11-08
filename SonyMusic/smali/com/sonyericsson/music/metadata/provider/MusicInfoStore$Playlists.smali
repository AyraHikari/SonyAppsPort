.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playlists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Columns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$CallMethods;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;
    }
.end annotation


# static fields
.field static final FAVOURITE_ID:I = -0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMBERS:Ljava/lang/String; = "members"

.field static final MOSTLY_PLAYED_ID:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MOVE_FROM_PARAM:Ljava/lang/String; = "from"

.field static final MOVE_TO_PARAM:Ljava/lang/String; = "to"

.field static final NEWLY_ADDED_ID:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PATH:Ljava/lang/String; = "playlists"

.field static final RECENTLY_PLAYED_ID:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final SENSME_ID:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SYNC_COMPLETED:Ljava/lang/String; = "sync_completed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentSyncCompletedUri()Landroid/net/Uri;
    .locals 2

    const-string v0, "content://com.sonyericsson.music.musicinfo/"

    .line 297
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "playlists"

    .line 298
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sync_completed"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sonyericsson.music.musicinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(I)Landroid/net/Uri;
    .locals 3

    const-string v0, "content://com.sonyericsson.music.musicinfo/"

    .line 312
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlists/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;Ljava/lang/Boolean;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;Ljava/lang/Boolean;)Landroid/net/Uri;
    .locals 2

    .line 328
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_SET:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 329
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->getParameter()Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 332
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 333
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 332
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 336
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 317
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 318
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Z)Landroid/net/Uri;
    .locals 2

    .line 306
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 307
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "playlists"

    return-object v0
.end method

.method public static getPlaylistIdParam(Landroid/net/Uri;)I
    .locals 2

    .line 344
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "members"

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->parseMembersContainerId(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
