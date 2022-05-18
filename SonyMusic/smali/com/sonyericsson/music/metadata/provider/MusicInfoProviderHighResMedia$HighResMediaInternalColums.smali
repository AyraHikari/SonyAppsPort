.class Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia$HighResMediaInternalColums;
.super Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Columns;
.source "MusicInfoProviderHighResMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HighResMediaInternalColums"
.end annotation


# static fields
.field public static final IS_AVAILABLE:Ljava/lang/String; = "is_available"

.field public static final IS_HIGH_RES:Ljava/lang/String; = "is_high_res"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 622
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Columns;-><init>()V

    return-void
.end method
