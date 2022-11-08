.class public final synthetic Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentTasksList;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentTasksList;IZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/RecentTasksList;

    iput p2, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;->f$1:I

    iput-boolean p3, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/RecentTasksList;

    iget v1, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;->f$1:I

    iget-boolean v2, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v3, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;->f$3:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$4$com-android-quickstep-RecentTasksList(IZLjava/util/function/Consumer;)V

    return-void
.end method
