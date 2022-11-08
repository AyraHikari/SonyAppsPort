.class public final synthetic Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/PackageUpdatedTask;

.field public final synthetic f$1:Ljava/util/HashSet;

.field public final synthetic f$10:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic f$11:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Ljava/util/function/Predicate;

.field public final synthetic f$4:Lcom/android/launcher3/util/IntSet;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcom/android/launcher3/util/IntSet;

.field public final synthetic f$7:Ljava/util/HashSet;

.field public final synthetic f$8:Ljava/util/HashMap;

.field public final synthetic f$9:Lcom/android/launcher3/icons/IconCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/HashSet;Landroid/content/Context;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Predicate;

    iput-object p5, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$4:Lcom/android/launcher3/util/IntSet;

    iput-boolean p6, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$5:Z

    iput-object p7, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$6:Lcom/android/launcher3/util/IntSet;

    iput-object p8, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$7:Ljava/util/HashSet;

    iput-object p9, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$8:Ljava/util/HashMap;

    iput-object p10, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$9:Lcom/android/launcher3/icons/IconCache;

    iput-object p11, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$10:Lcom/android/launcher3/util/FlagOp;

    iput-object p12, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$11:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/PackageUpdatedTask;

    iget-object v1, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Predicate;

    iget-object v4, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$4:Lcom/android/launcher3/util/IntSet;

    iget-boolean v5, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$5:Z

    iget-object v6, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$6:Lcom/android/launcher3/util/IntSet;

    iget-object v7, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$7:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$8:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$9:Lcom/android/launcher3/icons/IconCache;

    iget-object v10, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$10:Lcom/android/launcher3/util/FlagOp;

    iget-object v11, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;->f$11:Ljava/util/ArrayList;

    move-object v12, p1

    check-cast v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual/range {v0 .. v12}, Lcom/android/launcher3/model/PackageUpdatedTask;->lambda$execute$1$com-android-launcher3-model-PackageUpdatedTask(Ljava/util/HashSet;Landroid/content/Context;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
