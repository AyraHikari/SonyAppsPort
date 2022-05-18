.class public final Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Members"
.end annotation


# static fields
.field public static final AUDIO_ID:Ljava/lang/String; = "audio_id"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "play_order"

.field public static final PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final PLAY_ORDER:Ljava/lang/String; = "play_order"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2

    .line 1273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sonyericsson.music.musicinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/audio/playlists/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "/members"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 1277
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static moveItem(Landroid/content/ContentResolver;JII)Z
    .locals 0

    .line 1283
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->moveItem(Landroid/content/ContentResolver;JII)Z

    move-result p0

    return p0
.end method
