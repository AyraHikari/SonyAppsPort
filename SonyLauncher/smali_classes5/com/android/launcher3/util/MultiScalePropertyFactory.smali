.class public Lcom/android/launcher3/util/MultiScalePropertyFactory;
.super Ljava/lang/Object;
.source "MultiScalePropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiScaleProperty"


# instance fields
.field private mLastAggregatedValue:F

.field private mLastIndexSet:Ljava/lang/Integer;

.field private mMaxOfOthers:F

.field private mMinOfOthers:F

.field private mMultiplicationOfOthers:F

.field private final mName:Ljava/lang/String;

.field private final mProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/MultiScalePropertyFactory<",
            "TT;>.MultiScaleProperty;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastAggregatedValue(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastIndexSet(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiplicationOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProperties(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastAggregatedValue(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastIndexSet(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMinOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMultiplicationOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 53
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    .line 48
    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    .line 49
    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    .line 50
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected apply(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 122
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>;"
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 124
    return-void
.end method

.method public get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
    .locals 2
    .param p1, "index"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/android/launcher3/util/MultiScalePropertyFactory<",
            "TT;>.MultiScaleProperty;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/launcher3/util/MultiScalePropertyFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    return-object v0
.end method

.method synthetic lambda$get$0$com-android-launcher3-util-MultiScalePropertyFactory(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
    .locals 4
    .param p1, "index"    # Ljava/lang/Integer;
    .param p2, "k"    # Ljava/lang/Integer;

    .line 60
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>;"
    new-instance v0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;-><init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;ILjava/lang/String;)V

    return-object v0
.end method
