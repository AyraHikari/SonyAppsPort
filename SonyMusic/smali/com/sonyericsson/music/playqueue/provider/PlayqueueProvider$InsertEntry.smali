.class Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;
.super Ljava/lang/Object;
.source "PlayqueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertEntry"
.end annotation


# instance fields
.field final mId:I

.field final mUri:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;->mId:I

    .line 1038
    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;->mUri:Ljava/lang/String;

    return-void
.end method
