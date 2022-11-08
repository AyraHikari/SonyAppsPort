.class public final synthetic Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;->lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method
