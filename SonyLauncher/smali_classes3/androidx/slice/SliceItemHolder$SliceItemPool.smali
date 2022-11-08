.class public Landroidx/slice/SliceItemHolder$SliceItemPool;
.super Ljava/lang/Object;
.source "SliceItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/SliceItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceItemPool"
.end annotation


# instance fields
.field private final mCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItemHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/SliceItemHolder$SliceItemPool;->mCached:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public get()Landroidx/slice/SliceItemHolder;
    .locals 2

    .line 176
    iget-object v0, p0, Landroidx/slice/SliceItemHolder$SliceItemPool;->mCached:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Landroidx/slice/SliceItemHolder$SliceItemPool;->mCached:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItemHolder;

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Landroidx/slice/SliceItemHolder;

    invoke-direct {v0, p0}, Landroidx/slice/SliceItemHolder;-><init>(Landroidx/slice/SliceItemHolder$SliceItemPool;)V

    return-object v0
.end method

.method public release(Landroidx/slice/SliceItemHolder;)V
    .locals 3
    .param p1, "sliceItemHolder"    # Landroidx/slice/SliceItemHolder;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    .line 187
    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mCallback:Ljava/lang/Object;

    .line 188
    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    .line 189
    const/4 v1, 0x0

    iput v1, p1, Landroidx/slice/SliceItemHolder;->mInt:I

    .line 190
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Landroidx/slice/SliceItemHolder;->mLong:J

    .line 191
    iput-object v0, p1, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Landroidx/slice/SliceItemHolder$SliceItemPool;->mCached:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method
