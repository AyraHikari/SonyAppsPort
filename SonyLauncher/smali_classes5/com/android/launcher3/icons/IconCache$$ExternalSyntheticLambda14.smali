.class public final synthetic Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/icons/IconCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda14;->f$0:Lcom/android/launcher3/icons/IconCache;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda14;->f$0:Lcom/android/launcher3/icons/IconCache;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/IconCache;->lambda$new$0$com-android-launcher3-icons-IconCache(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result p1

    return p1
.end method
