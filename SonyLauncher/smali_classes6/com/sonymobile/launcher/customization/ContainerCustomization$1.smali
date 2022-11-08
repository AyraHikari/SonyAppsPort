.class Lcom/sonymobile/launcher/customization/ContainerCustomization$1;
.super Ljava/lang/Object;
.source "ContainerCustomization.java"

# interfaces
.implements Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/launcher/customization/ContainerCustomization;->parseAutoInstallGooglePlayConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/customization/ContainerCustomization;


# direct methods
.method constructor <init>(Lcom/sonymobile/launcher/customization/ContainerCustomization;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/launcher/customization/ContainerCustomization;

    .line 353
    iput-object p1, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization$1;->this$0:Lcom/sonymobile/launcher/customization/ContainerCustomization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization$1;->this$0:Lcom/sonymobile/launcher/customization/ContainerCustomization;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->handleSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 362
    .local p3, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/ContainerCustomization$1;->this$0:Lcom/sonymobile/launcher/customization/ContainerCustomization;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public parseStartGroups(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .param p1, "groupsType"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 368
    return-void
.end method
