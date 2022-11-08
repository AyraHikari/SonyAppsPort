.class public final synthetic Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/ItemInfoWithIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/icons/IconCache;

    iput-object p2, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/IconCache;->lambda$updateIconInBackground$1$com-android-launcher3-icons-IconCache(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v0

    return-object v0
.end method
