.class public Lcom/android/launcher3/util/MultiAdditivePropertyFactory;
.super Ljava/lang/Object;
.source "MultiAdditivePropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;
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

.field private static final TAG:Ljava/lang/String; = "MultiAdditivePropertyFactory"


# instance fields
.field private mAggregationOfOthers:F

.field private mLastIndexSet:Ljava/lang/Integer;

.field private final mName:Ljava/lang/String;

.field private final mProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<",
            "TT;>.MultiAdditiveProperty;>;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAggregationOfOthers(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mAggregationOfOthers:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastIndexSet(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProperties(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProperty(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Landroid/util/Property;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperty:Landroid/util/Property;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAggregationOfOthers(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mAggregationOfOthers:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastIndexSet(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/util/Property;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>;"
    .local p2, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mAggregationOfOthers:F

    .line 47
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperty:Landroid/util/Property;

    .line 53
    return-void
.end method


# virtual methods
.method protected apply(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .line 113
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperty:Landroid/util/Property;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;
    .locals 2
    .param p1, "index"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<",
            "TT;>.MultiAdditiveProperty;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    return-object v0
.end method

.method synthetic lambda$get$0$com-android-launcher3-util-MultiAdditivePropertyFactory(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;
    .locals 4
    .param p1, "index"    # Ljava/lang/Integer;
    .param p2, "k"    # Ljava/lang/Integer;

    .line 58
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>;"
    new-instance v0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;-><init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;ILjava/lang/String;)V

    return-object v0
.end method
