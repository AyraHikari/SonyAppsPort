.class Lcom/android/launcher3/QuickstepTransitionManager$2;
.super Ljava/util/LinkedHashMap;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;
    .param p2, "arg0"    # I

    .line 252
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$2;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 255
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager$2;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
