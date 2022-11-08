.class public Landroidx/slice/widget/SliceAdapter$SliceWrapper;
.super Ljava/lang/Object;
.source "SliceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SliceWrapper"
.end annotation


# instance fields
.field final mId:J

.field final mItem:Landroidx/slice/widget/SliceContent;

.field final mType:I


# direct methods
.method public constructor <init>(Landroidx/slice/widget/SliceContent;Landroidx/slice/widget/SliceAdapter$IdGenerator;I)V
    .locals 2
    .param p1, "item"    # Landroidx/slice/widget/SliceContent;
    .param p2, "idGen"    # Landroidx/slice/widget/SliceAdapter$IdGenerator;
    .param p3, "mode"    # I

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mItem:Landroidx/slice/widget/SliceContent;

    .line 332
    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->getFormat(Landroidx/slice/SliceItem;)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mType:I

    .line 333
    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/slice/widget/SliceAdapter$IdGenerator;->getId(Landroidx/slice/SliceItem;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mId:J

    .line 334
    return-void
.end method

.method public static getFormat(Landroidx/slice/SliceItem;)I
    .locals 2
    .param p0, "item"    # Landroidx/slice/SliceItem;

    .line 337
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const/4 v0, 0x0

    const-string v1, "source"

    invoke-static {p0, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x4

    return v0

    .line 342
    :cond_0
    const/4 v0, 0x5

    return v0

    .line 345
    :cond_1
    const-string v0, "horizontal"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    const/4 v0, 0x3

    return v0

    .line 348
    :cond_2
    const-string v0, "list_item"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 349
    const/4 v0, 0x2

    return v0

    .line 351
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
