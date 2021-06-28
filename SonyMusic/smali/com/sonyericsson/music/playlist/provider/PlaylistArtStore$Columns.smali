.class public Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$Columns;
.super Ljava/lang/Object;
.source "PlaylistArtStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ART_URI:Ljava/lang/String; = "playlist_art_uri"

.field public static final ID:Ljava/lang/String; = "playlist_id"

.field public static final TYPE:Ljava/lang/String; = "playlist_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
