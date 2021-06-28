.class Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;
.super Ljava/lang/Object;
.source "MusicInfoProviderHighResMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackInfo"
.end annotation


# instance fields
.field final albumId:Ljava/lang/String;

.field final dataPath:Ljava/lang/String;

.field final dateAdded:I

.field final id:Ljava/lang/String;

.field final mimeType:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->id:Ljava/lang/String;

    .line 577
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->title:Ljava/lang/String;

    .line 578
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->albumId:Ljava/lang/String;

    .line 579
    iput-object p4, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->mimeType:Ljava/lang/String;

    .line 580
    iput-object p5, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->dataPath:Ljava/lang/String;

    .line 581
    iput p6, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$TrackInfo;->dateAdded:I

    return-void
.end method
