.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Columns;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final DATE_UPDATED:Ljava/lang/String; = "date_updated"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final TRACK:Ljava/lang/String; = "track"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
