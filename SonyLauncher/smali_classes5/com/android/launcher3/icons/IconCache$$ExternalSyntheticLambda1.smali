.class public final synthetic Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/icons/ComponentWithLabel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/ComponentWithLabel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/icons/ComponentWithLabel;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/icons/ComponentWithLabel;

    invoke-static {v0}, Lcom/android/launcher3/icons/IconCache;->lambda$getTitleNoCache$6(Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/ComponentWithLabel;

    move-result-object v0

    return-object v0
.end method
