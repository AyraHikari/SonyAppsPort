.class Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AppWidgetResizeFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntRange"
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V
    .locals 1
    .param p1, "moveStart"    # Z
    .param p2, "moveEnd"    # Z
    .param p3, "delta"    # I
    .param p4, "out"    # Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 753
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    if-eqz p1, :cond_0

    add-int/2addr v0, p3

    :cond_0
    iput v0, p4, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 754
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    if-eqz p2, :cond_1

    add-int/2addr v0, p3

    :cond_1
    iput v0, p4, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 755
    return-void
.end method

.method public applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I
    .locals 2
    .param p1, "moveStart"    # Z
    .param p2, "moveEnd"    # Z
    .param p3, "delta"    # I
    .param p4, "minSize"    # I
    .param p5, "maxSize"    # I
    .param p6, "maxEnd"    # I
    .param p7, "out"    # Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 772
    invoke-virtual {p0, p1, p2, p3, p7}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 773
    iget v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    if-gez v0, :cond_0

    .line 774
    const/4 v0, 0x0

    iput v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 776
    :cond_0
    iget v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    if-le v0, p6, :cond_1

    .line 777
    iput p6, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 779
    :cond_1
    invoke-virtual {p7}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v0

    if-ge v0, p4, :cond_3

    .line 780
    if-eqz p1, :cond_2

    .line 781
    iget v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    sub-int/2addr v0, p4

    iput v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    goto :goto_0

    .line 782
    :cond_2
    if-eqz p2, :cond_3

    .line 783
    iget v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr v0, p4

    iput v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 786
    :cond_3
    :goto_0
    invoke-virtual {p7}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v0

    if-le v0, p5, :cond_5

    .line 787
    if-eqz p1, :cond_4

    .line 788
    iget v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    sub-int/2addr v0, p5

    iput v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    goto :goto_1

    .line 789
    :cond_4
    if-eqz p2, :cond_5

    .line 790
    iget v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr v0, p5

    iput v0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 793
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p7}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v0

    invoke-virtual {p7}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v1

    :goto_2
    sub-int/2addr v0, v1

    return v0
.end method

.method public clamp(I)I
    .locals 2
    .param p1, "value"    # I

    .line 736
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    return v0
.end method

.method public set(II)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "e"    # I

    .line 740
    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 741
    iput p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 742
    return-void
.end method

.method public size()I
    .locals 2

    .line 745
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int/2addr v0, v1

    return v0
.end method
