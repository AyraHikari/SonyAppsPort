.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchHistoryTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Columns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "search_history"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sonyericsson.music.musicinfo/search_history"

    .line 1192
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "search_history"

    return-object v0
.end method
