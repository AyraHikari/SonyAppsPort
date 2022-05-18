.class Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;
.super Ljava/lang/Object;
.source "MediastorePlaylistUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaStorePlaylistCreatedData"
.end annotation


# instance fields
.field mDateCreated:I

.field mDateModified:I

.field mId:I

.field mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mPath:Ljava/lang/String;

    .line 361
    iput p1, p0, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mId:I

    .line 362
    iput p3, p0, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mDateCreated:I

    .line 363
    iput p4, p0, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mDateModified:I

    return-void
.end method
