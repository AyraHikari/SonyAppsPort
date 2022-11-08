.class public abstract Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
.super Ljava/lang/Object;
.source "WidgetsListBaseEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Rank;,
        Lcom/android/launcher3/widget/model/WidgetsListBaseEntry$Header;
    }
.end annotation


# static fields
.field public static final RANK_WIDGETS_LIST_CONTENT:I = 0x4

.field public static final RANK_WIDGETS_LIST_HEADER:I = 0x2

.field public static final RANK_WIDGETS_LIST_SEARCH_HEADER:I = 0x3

.field public static final RANK_WIDGETS_TOP_SPACE:I = 0x1


# instance fields
.field public final mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

.field public final mTitleSectionName:Ljava/lang/String;

.field public final mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "pkgItem"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "titleSectionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 47
    iput-object p2, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    .line 48
    nop

    .line 49
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/WidgetItemComparator;

    invoke-direct {v1}, Lcom/android/launcher3/widget/WidgetItemComparator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public abstract getRank()I
.end method
