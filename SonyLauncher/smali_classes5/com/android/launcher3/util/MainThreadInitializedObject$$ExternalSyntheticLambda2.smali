.class public final synthetic Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    iput p2, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    iget v1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->lambda$forOverride$2(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p1

    return-object p1
.end method
