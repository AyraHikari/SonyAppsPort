.class public Lcom/sonymobile/systemui/shared/SystemUIExtensionContract;
.super Ljava/lang/Object;
.source "SystemUIExtensionContract.java"


# static fields
.field public static final COMPONENT_SERVICE:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.sonymobile.systemui.SystemUIExtensionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/systemui/shared/SystemUIExtensionContract;->COMPONENT_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
