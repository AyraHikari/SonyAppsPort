.class public Lcom/android/systemui/shared/system/ActivityCompat;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# instance fields
.field private final mWrapped:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method public registerRemoteAnimations(Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;)V
    .locals 2
    .param p1, "definition"    # Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->getWrapped()Landroid/view/RemoteAnimationDefinition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 37
    return-void
.end method

.method public unregisterRemoteAnimations()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->unregisterRemoteAnimations()V

    .line 44
    return-void
.end method
