.class public Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore$RecentlyPlayedType;
.super Ljava/lang/Object;
.source "RecentlyPlayedStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentlyPlayedType"
.end annotation


# static fields
.field public static final ALBUM:I = 0x2

.field public static final ARTIST:I = 0x3

.field public static final FOLDER:I = 0x4

.field public static final GENRE:I = 0x5

.field public static final NOT_VALID:I = 0x0

.field public static final PLAYLIST:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
