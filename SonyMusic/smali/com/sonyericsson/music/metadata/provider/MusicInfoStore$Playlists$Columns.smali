.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Columns;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final DATE_CREATED:Ljava/lang/String; = "date_created"

.field public static final DATE_PLAYED:Ljava/lang/String; = "date_played"

.field public static final DATE_UPDATED:Ljava/lang/String; = "date_updated"

.field public static final IS_AVAILABLE:Ljava/lang/String; = "is_available"

.field public static final IS_DELETED:Ljava/lang/String; = "is_deleted"

.field public static final IS_HIDDEN:Ljava/lang/String; = "is_hidden"

.field public static final MEDIASTORE_ID:Ljava/lang/String; = "mediastore_id"

.field public static final MEMBERS_COUNT:Ljava/lang/String; = "members_count"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORDER:Ljava/lang/String; = "sort_order"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PLAY_COUNT:Ljava/lang/String; = "play_count"

.field public static final SMART_PLAYLIST_TYPE:Ljava/lang/String; = "smart_playlist_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
