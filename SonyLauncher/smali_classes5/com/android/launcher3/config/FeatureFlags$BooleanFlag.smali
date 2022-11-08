.class public Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/config/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanFlag"
.end annotation


# instance fields
.field public final defaultValue:Z

.field public final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    .line 338
    iput-boolean p2, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    .line 339
    return-void
.end method


# virtual methods
.method protected appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "src"    # Ljava/lang/StringBuilder;

    .line 351
    iget-object v0, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public get()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
