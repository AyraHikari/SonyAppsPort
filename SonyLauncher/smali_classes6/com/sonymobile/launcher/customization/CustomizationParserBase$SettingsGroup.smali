.class Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;
.super Ljava/lang/Object;
.source "CustomizationParserBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/customization/CustomizationParserBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsGroup"
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final settings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;->settings:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;->type:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;->id:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public putSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/CustomizationParserBase$SettingsGroup;->settings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
