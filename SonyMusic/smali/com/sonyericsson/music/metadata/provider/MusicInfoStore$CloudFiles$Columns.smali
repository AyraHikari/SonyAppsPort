.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles$Columns;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final ART_PATH:Ljava/lang/String; = "art_path"

.field public static final DOWNLOAD_STATE:Ljava/lang/String; = "download_state"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final FILE_ID:Ljava/lang/String; = "file_id"

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final METADATA_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field public static final METADATA_STATUS:Ljava/lang/String; = "has_metadata"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PARENTS:Ljava/lang/String; = "parents"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
