.class public final Lcom/android/launcher3/widget/util/WidgetsTableUtils;
.super Ljava/lang/Object;
.source "WidgetsTableUtils.java"


# static fields
.field private static final WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static groupWidgetItemsIntoTableWithReordering(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .param p1, "maxSpansPerRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    .line 54
    .local p0, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->WIDGET_SHORTCUT_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 55
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    .local v0, "sortedWidgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-static {v0, p1}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsIntoTableWithoutReordering(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static groupWidgetItemsIntoTableWithoutReordering(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .param p1, "maxSpansPerRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    .line 81
    .local p0, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "widgetItemsTable":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;>;"
    const/4 v1, 0x0

    .line 83
    .local v1, "widgetItemsAtRow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    .line 84
    .local v3, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    if-nez v1, :cond_0

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 89
    .local v4, "numOfWidgetItems":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const/4 v6, 0x0

    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/launcher3/widget/util/WidgetsTableUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 91
    .local v5, "totalHorizontalSpan":I
    iget v6, v3, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    add-int/2addr v6, v5

    .line 92
    .local v6, "totalHorizontalSpanAfterAddingWidget":I
    if-nez v4, :cond_1

    .line 93
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v7, p1, -0x1

    if-gt v6, v7, :cond_2

    add-int/lit8 v7, v4, -0x1

    .line 99
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/model/WidgetItem;->hasSameType(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    .end local v4    # "numOfWidgetItems":I
    .end local v5    # "totalHorizontalSpan":I
    .end local v6    # "totalHorizontalSpanAfterAddingWidget":I
    :goto_1
    goto :goto_0

    .line 113
    :cond_3
    return-object v0
.end method

.method static synthetic lambda$groupWidgetItemsIntoTableWithoutReordering$1(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/Integer;
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 89
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I
    .locals 4
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p1, "otherItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_1

    return v2

    .line 41
    :cond_1
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    if-ne v0, v3, :cond_4

    .line 42
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    return v0

    .line 43
    :cond_2
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    if-le v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 45
    :cond_4
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v3, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    if-le v0, v3, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method
