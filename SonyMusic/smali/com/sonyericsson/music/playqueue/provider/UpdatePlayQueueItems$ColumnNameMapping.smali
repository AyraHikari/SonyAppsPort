.class Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;
.super Ljava/lang/Object;
.source "UpdatePlayQueueItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnNameMapping"
.end annotation


# instance fields
.field public final mDestColumnName:Ljava/lang/String;

.field public final mSrcColumnName:Ljava/lang/String;

.field public mSrcIndex:I

.field public final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcColumnName:Ljava/lang/String;

    .line 215
    iput p2, p0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcIndex:I

    .line 216
    iput-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mDestColumnName:Ljava/lang/String;

    .line 217
    iput p4, p0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mType:I

    return-void
.end method
