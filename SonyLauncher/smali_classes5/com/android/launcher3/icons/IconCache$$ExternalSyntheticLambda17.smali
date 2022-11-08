.class public final synthetic Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/icons/IconCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda17;->f$0:Lcom/android/launcher3/icons/IconCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda17;->f$0:Lcom/android/launcher3/icons/IconCache;

    check-cast p1, Landroidx/core/util/Pair;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->lambda$getTitlesAndIconsInBulk$13$com-android-launcher3-icons-IconCache(Landroidx/core/util/Pair;Ljava/util/List;)V

    return-void
.end method
