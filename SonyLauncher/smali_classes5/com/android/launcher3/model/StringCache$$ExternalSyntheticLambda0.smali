.class public final synthetic Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/android/launcher3/model/StringCache$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/android/launcher3/model/StringCache;->lambda$getUpdatableEnterpriseSting$0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
