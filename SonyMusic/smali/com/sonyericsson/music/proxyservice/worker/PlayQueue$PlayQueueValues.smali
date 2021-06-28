.class Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;
.super Ljava/lang/Object;
.source "PlayQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayQueueValues"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mValues:[Landroid/content/ContentValues;


# direct methods
.method constructor <init>([Landroid/content/ContentValues;I)V
    .locals 0

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->mValues:[Landroid/content/ContentValues;

    .line 733
    iput p2, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->mIndex:I

    return-void
.end method


# virtual methods
.method getIndex()I
    .locals 1

    .line 741
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->mIndex:I

    return v0
.end method

.method getValues()[Landroid/content/ContentValues;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue$PlayQueueValues;->mValues:[Landroid/content/ContentValues;

    return-object v0
.end method
