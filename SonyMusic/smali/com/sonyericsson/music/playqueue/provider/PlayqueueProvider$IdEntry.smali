.class Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;
.super Ljava/lang/Object;
.source "PlayqueueProvider.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mId:J

.field mTrackId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;)I
    .locals 1

    .line 155
    iget v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mTrackId:I

    iget p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mTrackId:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 144
    check-cast p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->compareTo(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;)I

    move-result p1

    return p1
.end method
