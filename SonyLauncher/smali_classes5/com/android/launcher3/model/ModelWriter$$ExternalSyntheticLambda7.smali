.class public final synthetic Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/ModelWriter;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic f$2:Landroid/content/ContentResolver;

.field public final synthetic f$3:[Ljava/lang/StackTraceElement;

.field public final synthetic f$4:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$2:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$3:[Ljava/lang/StackTraceElement;

    iput-object p5, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$4:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$2:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$3:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;->f$4:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/model/ModelWriter;->lambda$addItemToDatabase$6$com-android-launcher3-model-ModelWriter(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
